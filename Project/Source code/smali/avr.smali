.class public Lavr;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lavq;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;Z)Z

    .line 150
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a()V

    .line 151
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v0, p1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;I)V

    .line 155
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getHeight()I

    move-result v0

    .line 156
    iget-object v1, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 157
    iget-object v1, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v1, v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;I)I

    .line 158
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)Lavo;

    move-result-object v0

    invoke-virtual {v0}, Lavo;->a()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_0

    .line 160
    iget-object v1, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    neg-int v0, v0

    invoke-static {v1, v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;I)I

    .line 161
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)Lavo;

    move-result-object v0

    invoke-virtual {v0}, Lavo;->a()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->c(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b()V

    .line 168
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;Z)Z

    .line 170
    :cond_0
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;I)I

    .line 171
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->invalidate()V

    .line 172
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)Lavo;

    move-result-object v0

    iget-object v1, p0, Lavr;->a:Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    invoke-static {v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lavo;->a(II)V

    .line 178
    :cond_0
    return-void
.end method
