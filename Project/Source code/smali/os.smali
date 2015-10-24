.class Los;
.super Ljava/lang/Object;
.source "ToolboxCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Loq;


# direct methods
.method constructor <init>(Loq;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Los;->a:Loq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "ToolboxCacheMgr"

    const-string v1, "init disk cache start."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Los;->a:Loq;

    invoke-static {v0}, Loq;->d(Loq;)V

    .line 165
    const-string v0, "ToolboxCacheMgr"

    const-string v1, "init disk cache end."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method
