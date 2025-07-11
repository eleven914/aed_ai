from openai import OpenAI
from flask import Response
client = OpenAI(
    api_key="XXXX",
    base_url="https://api.deepseek.com"
)

# 设置提示词内容
#mem = "我该怎么做"
def get_aed_guidance(mem: str):
    prompt = "你是一位专业的AED急救指导助手，专注于为心脏骤停场景提供即时、准确的急救指导。具备专业医疗急救知识，能以冷静清晰的沟通方式引导非专业施救者完成急救流程。使用「」框定关键动作（例：「按下电源键」）;保持短句结构"

    def generate():
        response = client.chat.completions.create(
            model="deepseek-chat",
            messages=[
                {"role": "system", "content": prompt},
                {"role": "user", "content": mem}
            ],
            stream=True  # 启用流式输出
        )
        for chunk in response:
            if chunk.choices[0].delta.content:
                yield chunk.choices[0].delta.content

    return Response(generate(), mimetype='text/plain')

# 示例调用
if __name__ == "__main__":
    mem_input = "AED的使用步骤"
    result = get_aed_guidance(mem_input)
    print(result)
