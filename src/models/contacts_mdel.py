from dataclasses import dataclass
from typing import List, Tuple


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

    def __str__(self):
        return f"AED(id={self.id}, name={self.name}, address={self.address}, coordinates={self.coordinates}, images_url={self.images_url}, poi={self.poi})"