.class Lajb;
.super Ljava/lang/Object;
.source "CpuOpt.java"

# interfaces
.implements Lbai;


# instance fields
.field final synthetic a:Laiy;


# direct methods
.method constructor <init>(Laiy;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lajb;->a:Laiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v0, p0, Lajb;->a:Laiy;

    iget-object v0, v0, Laiy;->a:Lajc;

    invoke-static {}, Laiy;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lajc;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lajb;->a:Laiy;

    iget-object v0, v0, Laiy;->a:Lajc;

    invoke-static {}, Laiy;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lajc;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lajb;->a:Laiy;

    iget-object v0, v0, Laiy;->a:Lajc;

    invoke-static {}, Laiy;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lajc;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
