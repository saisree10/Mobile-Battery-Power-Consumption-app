.class Lack;
.super Ljava/util/TimerTask;
.source "WidgetUpdataServiceBase.java"


# instance fields
.field final synthetic a:Lacj;


# direct methods
.method constructor <init>(Lacj;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lack;->a:Lacj;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lack;->a:Lacj;

    invoke-static {v0}, Lbal;->a(Landroid/content/Context;)V

    .line 76
    return-void
.end method
