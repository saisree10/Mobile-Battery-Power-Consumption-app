.class public Lavf;
.super Landroid/os/Handler;
.source "DxDigitalTimeDisplay.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_0

    .line 64
    iget-object v0, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    iget-object v1, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    iget-object v2, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-static {v2}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I

    move-result v2

    iget-object v3, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-static {v3}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;I)I

    .line 65
    iget-object v0, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    iget-object v1, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    iget-object v2, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-static {v2}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I

    move-result v2

    iget-object v3, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-static {v3}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;I)I

    .line 67
    iget-object v0, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->e(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)V

    .line 69
    iget-object v0, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->a(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I

    move-result v0

    iget-object v1, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-static {v1}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->b(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->c(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I

    move-result v0

    iget-object v1, p0, Lavf;->a:Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;

    invoke-static {v1}, Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;->d(Lcom/dianxinos/powermanager/ui/DxDigitalTimeDisplay;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0, v4}, Lavf;->removeMessages(I)V

    .line 74
    :cond_0
    return-void
.end method
