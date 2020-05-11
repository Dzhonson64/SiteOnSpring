<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
<div>
    <@l.logout />
</div>
    <form method="post">
        <input type="text" name="text" placeholder="Ввведите сообщение">
        <input type="text" name="tag" placeholder="Тег">
        <input type="hidden" name = "_csrf" value="${_csrf.token}">
        <button type="submit">Добавить</button>
    </form>
</div>
<h1>Список сообщений</h1>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter}">
    <button type="submit">Найти</button>
</form>
<#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
    </div>
<#else>
No message
</#list>
</@c.page>