.class public Laay;
.super Ljava/lang/Thread;
.source "PowerMangerApplication.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMangerApplication;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/PowerMangerApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Laay;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/PowerMangerApplication;Laaw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Laay;-><init>(Lcom/dianxinos/powermanager/PowerMangerApplication;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->b()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    invoke-static {v0}, Latj;->a(Landroid/content/Context;)D

    .line 215
    iget-object v0, p0, Laay;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lasc;->a(Landroid/content/Context;)Lasc;

    move-result-object v0

    invoke-virtual {v0}, Lasc;->a()V

    .line 216
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->b()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    invoke-static {v0}, Laoh;->a(Landroid/content/Context;)V

    .line 217
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->b()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    invoke-static {v0}, Lacm;->a(Landroid/content/Context;)Lacm;

    .line 218
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->b()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    invoke-static {v0}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v0

    invoke-virtual {v0}, Lmy;->f()V

    .line 219
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->b()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    invoke-static {v0}, Lxc;->a(Landroid/content/Context;)V

    .line 223
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->b()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    invoke-static {v0}, Lacz;->a(Landroid/content/Context;)Lacz;

    .line 224
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->b()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    .line 225
    return-void
.end method
