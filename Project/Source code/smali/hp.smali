.class public Lhp;
.super Ljava/lang/Object;
.source "BroadCastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dianxinos/acomponent/manager/BroadCastReceiver;


# direct methods
.method public constructor <init>(Lcom/dianxinos/acomponent/manager/BroadCastReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lhp;->b:Lcom/dianxinos/acomponent/manager/BroadCastReceiver;

    iput-object p2, p0, Lhp;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lhp;->a:Landroid/content/Context;

    invoke-static {v0}, Lhn;->c(Landroid/content/Context;)Lhn;

    move-result-object v0

    iget-object v1, p0, Lhp;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lhn;->b(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
