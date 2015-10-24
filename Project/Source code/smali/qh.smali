.class Lqh;
.super Ljava/lang/Object;
.source "ToolboxClickHandler.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;
.implements Lqg;


# instance fields
.field final synthetic a:Lqb;

.field private b:Lou;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lqb;Lou;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lqh;->a:Lqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqh;->c:Z

    .line 46
    iput-object p2, p0, Lqh;->b:Lou;

    .line 47
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqh;->c:Z

    .line 92
    return-void
.end method

.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-boolean v0, p0, Lqh;->c:Z

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "ToolboxClickHandler"

    const-string v1, "[Http]Action canceled."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lqh;->a:Lqb;

    invoke-static {v0}, Lqb;->a(Lqb;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lqh;->b:Lou;

    invoke-static {v0, v1}, Lop;->g(Landroid/content/Context;Lou;)V

    .line 80
    :goto_0
    return v4

    .line 56
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 57
    const/16 v1, 0x12f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x133

    if-ne v0, v1, :cond_4

    .line 61
    :cond_1
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 62
    aget-object v0, v0, v4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    const-string v0, "ToolboxClickHandler"

    const-string v1, "[Http] null URL."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lqh;->a:Lqb;

    iget-object v1, p0, Lqh;->b:Lou;

    iget-object v2, p0, Lqh;->b:Lou;

    iget-object v2, v2, Lou;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lqb;->b(Lou;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lqh;->a:Lqb;

    invoke-virtual {v0}, Lqb;->c()V

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {v0}, Lpj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    const-string v1, "ToolboxClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Http] Market URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lqh;->a:Lqb;

    iget-object v2, p0, Lqh;->b:Lou;

    invoke-virtual {v1, v2, v0}, Lqb;->c(Lou;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lqh;->a:Lqb;

    invoke-virtual {v0}, Lqb;->c()V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Lqh;->a:Lqb;

    iget-object v2, p0, Lqh;->b:Lou;

    invoke-virtual {v1, v2, v0}, Lqb;->e(Lou;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_4
    const-string v0, "ToolboxClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Http] non-Market URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lqh;->b:Lou;

    iget-object v2, v2, Lou;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lqh;->a:Lqb;

    iget-object v1, p0, Lqh;->b:Lou;

    iget-object v2, p0, Lqh;->b:Lou;

    iget-object v2, v2, Lou;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lqb;->b(Lou;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lqh;->a:Lqb;

    invoke-virtual {v0}, Lqb;->c()V

    goto/16 :goto_0
.end method
