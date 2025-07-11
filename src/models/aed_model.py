from dataclasses import dataclass
from typing import List, Tuple, Optional


@dataclass
class AED:
    """
    AED 数据模型类，表示一个 AED 位置信息的数据结构

    属性:
    id (int): 位置的唯一标识符
    name (str): 位置名称
    address (str): 位置的完整地址
    coordinates (Tuple[str, str]): 位置的经纬度坐标
    images_url (List[str]): AED 位置的图片URL数组
    poi (List[str]): 相关兴趣点列表
    """
    id: int
    name: str
    address: str
    coordinates: Tuple[str, str]
    images_url: List[str]
    poi: List[str]

class AEDRepository:
    """
    AED 数据库操作类，用于管理 AED 数据库

    属性:
    db (List[AED]): AED 数据库列表
    """
    def __init__(self):
        self.db: List[AED] = []

    def add_aed(self, aed: AED) -> None:
        """
        添加一个新的 AED 到数据库中

        参数:
        aed (AED): 要添加的 AED 数据对象
        """
        self.db.append(aed)