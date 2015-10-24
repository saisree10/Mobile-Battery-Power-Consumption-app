.class public Larl;
.super Landroid/os/Handler;
.source "CpuSelectDialog.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Larl;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;Lari;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-direct {p0, p1}, Larl;-><init>(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 245
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->c()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 253
    iget-object v0, p0, Larl;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    iget-object v1, p0, Larl;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0191

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 261
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Larl;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    iget-object v1, p0, Larl;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0194

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
