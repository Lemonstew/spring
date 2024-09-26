<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- element 명 + tab --%>
<h1></h1>
<p></p>
<div></div>
<%-- p+div --%>
<p></p>
<div></div>
<%-- h1+h2+h3 --%>
<h1></h1>
<h2></h2>
<h3></h3>
<%-- div>p --%>
<div>
    <p></p>
</div>
<%-- h1>span --%>
<h1>
    <span></span>
</h1>
<%-- # 은 id 셀렉터 --%>
<h1 id="head1"></h1>

<%--  h1#head2>p#para1--%>
<h1 id="head2">
    <p id="para1"></p>
</h1>

<%--  h1#head3+h2#sub1--%>
<h1 id="head3"></h1>
<h2 id="sub1"></h2>

<%--  div#box1--%>
<div id="box1"></div>

<%-- . --%>
<%--  h1.head--%>
<h1 class="head"></h1>
<%--  h1.head.note.arnak.dune.7wonders--%>
<h1 class="head note arnak dune 7wonders"></h1>
<%--  h1#head01.error.note--%>
<h1 id="head01" class="error note"></h1>

<%-- [] --%>
<%--  h1[title]--%>
<h1 title=""></h1>

<%--  h1[title="my head"]--%>
<h1 title="my head"></h1>

<%--  input[value="hello"][name="message"][game="Anachrony"][title="input"]--%>
<input type="text" value="hello" name="message" game="Anachrony" title="input">

<%-- * --%>
<%-- p*3 --%>
<p></p>
<p></p>
<p></p>
<%-- tr*2 --%>
<tr></tr>
<tr></tr>

<%--  table>tr*3>td*4--%>
<table>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>

<%-- ^ --%>
<%--  div>h1>span+p--%>
<div>
    <h1>
        <span></span>
        <p></p>
    </h1>
</div>

<%--  div>h1>span^p--%>
<div>
    <h1>
        <span></span>
    </h1>
    <p></p>
</div>

<%--  table>thead>tr>th*4^^tbody>tr*3>td*4--%>
<table>
    <thead>
    <tr>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>

<%--lorem  --%>

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias animi asperiores blanditiis cumque dignissimos dolorem
ea fugiat fugit libero mollitia nobis pariatur quas quibusdam rem reprehenderit sequi sunt temporibus, ut!

<%--lorem3--%>
Lorem ipsum dolor.

<%--lorem7--%>
Lorem ipsum dolor sit amet, consectetur adipisicing.

<%--table>thead>tr>th*4>lorem1^^^tbody>tr*3>th*4>lorem1--%>
<table>
    <thead>
    <tr>
        <th>Lorem.</th>
        <th>Fugiat.</th>
        <th>Fuga.</th>
        <th>Nostrum!</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>Tempore?</th>
        <th>Aliquid.</th>
        <th>Commodi?</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Assumenda!</th>
        <th>Facilis.</th>
        <th>Quisquam.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Commodi?</th>
        <th>Numquam.</th>
        <th>Minus!</th>
    </tr>
    </tbody>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>Vitae.</th>
        <th>Beatae.</th>
        <th>Consequatur.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Nobis?</th>
        <th>Sunt.</th>
        <th>Earum?</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Rem.</th>
        <th>Accusantium!</th>
        <th>Quis!</th>
    </tr>
    </tbody>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>Aliquam.</th>
        <th>A?</th>
        <th>Aspernatur.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Odit.</th>
        <th>Veniam.</th>
        <th>Consectetur.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Incidunt!</th>
        <th>Ex?</th>
        <th>Eveniet.</th>
    </tr>
    </tbody>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>Dolorem.</th>
        <th>Ratione!</th>
        <th>Nulla!</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Ipsam?</th>
        <th>Deleniti.</th>
        <th>Voluptatibus.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Obcaecati.</th>
        <th>Natus.</th>
        <th>Suscipit?</th>
    </tr>
    </tbody>
</table>

<%-- $ --%>
<%--h1#header$*3--%>
<h1 id="header1"></h1>
<h1 id="header2"></h1>
<h1 id="header3"></h1>

<%--h1.note$*3--%>
<h1 class="note1"></h1>
<h1 class="note2"></h1>
<h1 class="note3"></h1>

<%--{}--%>
<%--h1{hello world}--%>
<h1>hello world</h1>

<%--div{$}*5--%>
<div>1</div>
<div>2</div>
<div>3</div>
<div>4</div>
<div>5</div>

<%--()--%>
<%--(h1>p)*3--%>
<h1>
    <p></p>
</h1>
<h1>
    <p></p>
</h1>
<h1>
    <p></p>
</h1>

table>


</body>
</html>
