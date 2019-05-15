<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome Animation.aspx.cs" Inherits="Draft1.Welcome_Animation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style>html { font-size: 1px; }
body {
  margin: 0;
  font-family: 'Work Sans', sans-serif;
  font-size: 30rem;
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background-image: linear-gradient(rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.6)), url(http://alluretouch.com/wp-content/uploads/2015/09/minimalist-art.jpg);
  background-position: 50% 15%;
  background-size: cover;
}

main {
  position: relative;
  display: flex;
}

h1 { margin: 0; color:#00CCFF}
.marker, .r, .e1, .s1, .s2, .e2 {
  animation-timing-function: cubic-bezier(0.15,-0.01, 0.58, 1);
  animation-duration: 5s;
  animation-iteration-count: infinite;
  will-change: transform;
  color:#00CCFF
}

.marker {
  position: absolute; top: 4rem; left: -3rem;
  height: 3rem; width: 40rem;
  background-color: black;
  animation-name: marker;
}

.r { margin-left: 1rem;   animation-name: r; }
.e1 { margin-left: 7rem; animation-name: e1; }
.s1 { margin-left: 16rem; animation-name: s1; }
.s2 { margin-left: 21rem; animation-name: s2; }
.e2 { margin: 0 36rem 0 42rem; animation-name: e2; }

@keyframes r { 
  0%, 20% { transform: translateX(0); }
  50%, 70% { transform: translateX(35rem); }
}
@keyframes e1 { 
  0%, 20% { transform: translateX(0); }
  50%, 70% { transform: translateX(75rem); }
}
@keyframes s1 { 
  0%, 20% { transform: translateX(0); }
  50%, 70% { transform: translateX(81rem); }
}
@keyframes s2 { 
  0%, 20% { transform: translateX(0); }
  50%, 70% { transform: translateX(71rem); }
}
@keyframes e2 { 
  0%, 20% { transform: translateX(0); }
  50%, 70% { transform: translateX(34rem); }
}
@keyframes marker { 
  0%, 20% { transform: translateX(0); }
  50%, 70% { transform: translateX(337rem); }
}</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <asp:Timer ID="Timer1" runat="server" Interval="6000" OnTick="Timer1_Tick" ValidateRequestMode="Enabled">
        </asp:Timer>
        <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="1">
        </asp:ScriptManager>
            </div>
    <main>
    <div class="marker"></div>
       
        <h1>W</h1>
    <h1 class="r">E</h1>
    <h1 class="e1">L</h1>
    <h1 class="s1">C</h1>
    <h1 class="s2">O</h1>
    <h1 class="e2">M</h1>
         
        <h1>E</h1>
  </main>
    </form>
</body>
</html>
