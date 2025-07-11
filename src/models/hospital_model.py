from dataclasses import dataclass
from typing import List


@dataclass
class Hospital:
    """
    Hospital 数据模型类，表示医院信息的数据结构

    属性:
    id (int): 医院的唯一标识符
    name (str): 医院名称
    address (str): 医院的完整地址
    coordinates (List[str]): 医院的经纬度坐标（字符串数组）
    phone (str): 医院联系电话
    """
    id: int
    name: str
    address: str
    coordinates: List[str]
    phone: str

    def __str__(self):
        return f"Hospital(id={self.id}, name={self.name}, address={self.address}, coordinates={self.coordinates}, phone={self.phone})"