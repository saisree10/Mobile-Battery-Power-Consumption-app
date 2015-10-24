.class public Lss;
.super Ljava/lang/Object;
.source "ConnectivityChangeListener.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/IntentFilter;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lss;->b:Landroid/content/IntentFilter;

    .line 24
    new-instance v0, Lst;

    invoke-direct {v0, p0}, Lst;-><init>(Lss;)V

    iput-object v0, p0, Lss;->c:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lss;->a:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic a(Lss;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lss;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lss;->a:Landroid/content/Context;

    iget-object v1, p0, Lss;->c:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lss;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lss;->a:Landroid/content/Context;

    iget-object v1, p0, Lss;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    return-void
.end method
