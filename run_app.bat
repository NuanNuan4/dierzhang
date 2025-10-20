@echo off
echo 正在启动第二章数据可视化交互应用...
echo.

REM 检查Python是否安装
python --version >nul 2>&1
if errorlevel 1 (
    echo 错误: 未找到Python，请先安装Python 3.7或更高版本
    pause
    exit /b 1
)

REM 检查streamlit是否安装
python -c "import streamlit" >nul 2>&1
if errorlevel 1 (
    echo 正在安装依赖包...
    pip install -r requirements.txt
)

echo 启动Streamlit应用...
echo 应用将在浏览器中自动打开，地址为: http://localhost:8501
echo 按 Ctrl+C 停止应用
echo.

streamlit run app.py