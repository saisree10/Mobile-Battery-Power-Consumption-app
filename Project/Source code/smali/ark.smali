.class public Lark;
.super Ljava/lang/Object;
.source "CpuSelectDialog.java"

# interfaces
.implements Lbai;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lark;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 223
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 225
    :pswitch_0
    iget-object v0, p0, Lark;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->b(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)Larl;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Larl;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lark;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->b(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)Larl;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Larl;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v0, p0, Lark;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->b(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)Larl;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Larl;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
