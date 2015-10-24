.class Lsg;
.super Landroid/os/Handler;
.source "DXCoreServiceInteractor.java"


# instance fields
.field final synthetic a:Lse;


# direct methods
.method private constructor <init>(Lse;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lsg;->a:Lse;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse;Lsf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lsg;-><init>(Lse;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    .line 64
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 66
    return-void
.end method
