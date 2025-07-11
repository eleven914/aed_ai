from dataclasses import dataclass


@dataclass
class SaintJohn:
    """
    SaintJohn 数据模型类，表示圣约翰救护机构的信息

    属性:
    id (int): 机构的唯一标识符
    location (str): 机构的位置信息
    phone (str): 机构的联系电话
    """
    id: int
    location: str
    phone: str

    def __str__(self):
        return f"SaintJohn(id={self.id}, location={self.location}, phone={self.phone})"