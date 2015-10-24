.class Laeb;
.super Ljava/lang/Object;
.source "SkinDownloader.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Ladz;


# direct methods
.method private constructor <init>(Ladz;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Laeb;->a:Ladz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ladz;Laea;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Laeb;-><init>(Ladz;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Laeb;->a:Ladz;

    invoke-static {p2}, Lakc;->a(Landroid/os/IBinder;)Lakb;

    move-result-object v1

    iput-object v1, v0, Ladz;->a:Lakb;

    .line 33
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Laeb;->a:Ladz;

    const/4 v1, 0x0

    iput-object v1, v0, Ladz;->a:Lakb;

    .line 38
    return-void
.end method
