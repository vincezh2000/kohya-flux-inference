from PIL import Image
import os
import re


def merge_images(folder_path, output_folder):
    # 获取文件夹中的所有图片文件
    image_files = [f for f in os.listdir(folder_path) if f.endswith('.png')]

    # 使用正则表达式提取文件名中的数字，并按该数字排序
    def extract_number(filename):
        match = re.search(r'_(\d+)_[\d.]+_\d+\.png$', filename)
        return int(match.group(1)) if match else 0

    image_files.sort(key=extract_number)

    # 打开图片，并存入列表
    images = [Image.open(os.path.join(folder_path, img)) for img in image_files[:18]]  # 仅处理前18张

    # 获取单张图片的宽和高（假设所有图片大小一致）
    img_width, img_height = images[0].size

    # 创建新的空白图片，宽度为6张图片的宽度，高度为3张图片的高度
    total_width = img_width * 6
    total_height = img_height * 3
    merged_image = Image.new('RGB', (total_width, total_height))

    # 将每张图片放到新图片中的对应位置
    for index, img in enumerate(images):
        x_offset = (index % 6) * img_width
        y_offset = (index // 6) * img_height
        merged_image.paste(img, (x_offset, y_offset))

    # 检查输出文件夹是否存在，如果不存在则创建
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # 定义输出文件路径
    output_image = os.path.join(output_folder, 'merged_image.png')

    # 保存合并后的图片
    merged_image.save(output_image)
    print(f"Merged image saved at: {output_image}")


if __name__ == '__main__':
    # 使用示例
    folder_path = '/data/kohya-flux-inference/sample/3ddianshang_refined_stand_rank64_epoch10/'
    output_folder = '/data/kohya-flux-inference/sample/3ddianshang_refined_stand_rank64_epoch10/'
    merge_images(folder_path, output_folder)