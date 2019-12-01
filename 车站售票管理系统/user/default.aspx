<%@ Page Title="" Language="C#" MasterPageFile="~/user/userMasterPage2.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="user_default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td>
                <div class="banner">
		<!-- 轮播图 -->
		<div class="picBox">
			<img src="./images/Railway12306banner1.jpg" alt="抱歉，图片走丢了......">
			<img src="./images/Railway12306banner2.jpg" alt="抱歉，图片走丢了......">
			<img src="./images/Railway12306banner1.jpg" alt="抱歉，图片走丢了......">
		</div>
		<!-- 内嵌查询框 -->
		<div class="queryBox">
			<ul class="queryMenu">
				<li><a href=""><i class="iconfont icon-Train"></i>车票</a></li>
				<li><a href=""><i class="iconfont icon-order"></i>常用查询</a></li>
				<li><a href=""><i class="iconfont icon-Dishes"></i>订餐</a></li>
			</ul>
			<div class="queryContent">
				<ul class="head">
					<li><a href=""><i class="iconfont icon-singletrip">单程</i></a></li>
					<li><a href=""><i class="iconfont icon-Arrow-One-wayCopy">往返</i></a></li>
					<li><a href=""><i class="iconfont icon-singlecycle-player">连续换乘</i></a></li>
					<li><a href=""><i class="iconfont icon-piao">退改签</i></a></li>
				</ul>
				<form action="" method="GET">
					出发地&nbsp;&nbsp;<div class="info"><input type="text" name="startPoint" placeholder="简拼/全拼/汉字"><i class="iconfont icon-font-publish--"></i></div>
					<br><br>
					到达地&nbsp;&nbsp;<div class="info"><input type="text" name="endPoint" placeholder="简拼/全拼/汉字"><i class="iconfont icon-font-publish--"></i></div>
					<br><br>
					出发日期&nbsp;&nbsp;<div class="info"><input type="text" name="startDate" placeholder="2019-8-12"><i class="iconfont icon-ScheduleConfig"></i></div>
					<div class="choice">
						<label>学生</label>&nbsp;&nbsp;<input type="checkbox" name="isStudent">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<label>高铁/动车</label>&nbsp;&nbsp;<input type="checkbox" name="isEMU">
					</div>
					<input type="submit" value="查询">
				</form>
			</div>
		</div>
	</div>


                &nbsp;
                <asp:DropDownList ID="ddlStart" runat="server" DataSourceID="SqlDataSource3" DataTextField="departureStation" DataValueField="departureStation"></asp:DropDownList>
                <asp:DropDownList ID="ddlEnd" runat="server" DataSourceID="SqlDataSource4" DataTextField="Terminus" DataValueField="Terminus"></asp:DropDownList>
                <br />
                <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
                <asp:ImageButton ID="imgbtnCalendar" runat="server" ImageUrl="~/images/calendar alt-fill.png" OnClick="imgbtnCalendar_Click" ImageAlign="AbsMiddle" />
                <br /><div style="margin: 0px auto 0px auto;display:inline-block;">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar></div>
                <asp:Button ID="btnSearch" runat="server" Text="查询" />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [departureStation] FROM [Tickets]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Terminus] FROM [Tickets]"></asp:SqlDataSource>
                <hr/>
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="tktNum" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="tktNumLabel" runat="server" Text='<%# Eval("tktNum") %>' />
                            </td>
                            <td>
                                <asp:Label ID="departureStationLabel" runat="server" Text='<%# Eval("departureStation") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TerminusLabel" runat="server" Text='<%# Eval("Terminus") %>' />
                            </td>
                            <td>
                                <asp:Label ID="tktPrcLabel" runat="server" Text='<%# Eval("tktPrc") %>' />
                            </td>
                            <td>
                                <asp:Label ID="departureTimeLabel" runat="server" Text='<%# Eval("departureTime") %>' />
                            </td>
                            <td>
                                <asp:Label ID="carNumLabel" runat="server" Text='<%# Eval("carNum") %>' />
                            </td>
                            <td>
                                <asp:Label ID="seatLevelLabel" runat="server" Text='<%# Eval("seatLevel") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server">车票编号</th>
                                            <th runat="server">始发站</th>
                                            <th runat="server">终点站</th>
                                            <th runat="server">票价</th>
                                            <th runat="server">始发时间</th>
                                            <th runat="server">车辆编号</th>
                                            <th runat="server">座位等级</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="tktNumLabel" runat="server" Text='<%# Eval("tktNum") %>' />
                            </td>
                            <td>
                                <asp:Label ID="departureStationLabel" runat="server" Text='<%# Eval("departureStation") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TerminusLabel" runat="server" Text='<%# Eval("Terminus") %>' />
                            </td>
                            <td>
                                <asp:Label ID="tktPrcLabel" runat="server" Text='<%# Eval("tktPrc") %>' />
                            </td>
                            <td>
                                <asp:Label ID="departureTimeLabel" runat="server" Text='<%# Eval("departureTime") %>' />
                            </td>
                            <td>
                                <asp:Label ID="carNumLabel" runat="server" Text='<%# Eval("carNum") %>' />
                            </td>
                            <td>
                                <asp:Label ID="seatLevelLabel" runat="server" Text='<%# Eval("seatLevel") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Tickets]"></asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>

