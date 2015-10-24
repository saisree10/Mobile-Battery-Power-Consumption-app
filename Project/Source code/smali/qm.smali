.class Lqm;
.super Ljava/lang/Object;
.source "ToolboxListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lql;


# direct methods
.method constructor <init>(Lql;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lqm;->c:Lql;

    iput-object p2, p0, Lqm;->a:Ljava/util/List;

    iput-boolean p3, p0, Lqm;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lqm;->c:Lql;

    iget-object v0, v0, Lql;->a:Landroid/app/Activity;

    iget-object v1, p0, Lqm;->a:Ljava/util/List;

    iget-boolean v2, p0, Lqm;->b:Z

    invoke-static {v0, v1, v2}, Lop;->a(Landroid/content/Context;Ljava/util/List;Z)V

    .line 186
    return-void
.end method
