from flask import Flask, request, jsonify, render_template,Blueprint
from routes.ai import get_aed_guidance
import datetime
import uuid
from datetime import datetime, timezone

aedai_bp = Blueprint('aedai', __name__)

# 用于存储对话历史（仅限演示，实际生产应使用数据库或缓存）
conversation_history = []

@aedai_bp.route('/ai', methods=['GET'])
def index():
    return render_template('pages/ai.html')
@aedai_bp.route('/ai', methods=['POST'])
def ai_endpoint():
    data = request.get_json()
    user_input = data.get('input')
    
    if not user_input:
        return jsonify({
            'error': 'Missing input',
            'status': 'error',
            'code': 400
        }), 400
    # 调用AI处理逻辑
    response = get_aed_guidance(user_input)
    return get_aed_guidance(user_input)
    # # 生成唯一ID
    # message_id = str(uuid.uuid4())
    #
    # # 构建AI回复对象
    # ai_response = {
    #     "id": message_id,
    #     "content": response,
    #     "isUser": False,
    #     "timestamp": datetime.now(timezone.utc).isoformat(),  # 使用 UTC 时间
    #     "avatar": "https://space.coze.cn/api/coze_space/gen_image?image_size=square&prompt=AI%20assistant%20avatar%2C%20friendly%20and%20professional&sign=9b58c5c03cbdd3778e2bf19bf9393419",
    #     "status": "success"
    # }
    #
    # # 记录对话历史
    # conversation = {
    #     "user": user_input,
    #     "ai": response
    # }
    # conversation_history.append(conversation)
    #
    # return jsonify({
    #     "response": response,
    #     "history": conversation_history,  # 返回当前完整对话历史
    #     "message": ai_response,
    #     "status": "success"
    # })
