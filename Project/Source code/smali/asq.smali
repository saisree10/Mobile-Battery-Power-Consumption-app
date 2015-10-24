.class public Lasq;
.super Ljava/lang/Object;
.source "SmartSettingsActivity.java"

# interfaces
.implements Lbai;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lasq;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 349
    packed-switch p1, :pswitch_data_0

    .line 363
    :goto_0
    return-void

    .line 351
    :pswitch_0
    iget-object v0, p0, Lasq;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->e(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)Lasr;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lasr;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lasq;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->e(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)Lasr;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lasr;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v0, p0, Lasq;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->e(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)Lasr;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lasr;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
