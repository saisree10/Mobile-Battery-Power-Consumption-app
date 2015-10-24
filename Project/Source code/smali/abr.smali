.class public Labr;
.super Ljava/lang/Thread;
.source "PowerMgrTabActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Labr;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Labr;->setPriority(I)V

    .line 446
    iget-object v0, p0, Labr;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Laoh;->a(Landroid/content/Context;)V

    .line 447
    iget-object v0, p0, Labr;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laof;->a(Landroid/content/Context;)Laof;

    move-result-object v0

    invoke-virtual {v0}, Laof;->a()V

    .line 448
    return-void
.end method
