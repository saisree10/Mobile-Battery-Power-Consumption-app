.class public Laax;
.super Ljava/lang/Object;
.source "PowerMangerApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMangerApplication;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMangerApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Laax;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->b()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    invoke-static {v0}, Ltb;->a(Landroid/content/Context;)Ltb;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ltb;->a()V

    .line 119
    const/4 v1, 0x1

    const-string v2, "com.dianxinos.*|com.es.*"

    invoke-virtual {v0, v1, v2}, Ltb;->a(ZLjava/lang/String;)V

    .line 120
    return-void
.end method
