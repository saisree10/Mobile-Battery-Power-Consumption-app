.class Lqf;
.super Ljava/lang/Object;
.source "ToolboxClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lou;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lqb;


# direct methods
.method constructor <init>(Lqb;Lou;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lqf;->c:Lqb;

    iput-object p2, p0, Lqf;->a:Lou;

    iput-object p3, p0, Lqf;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lqf;->c:Lqb;

    iget-object v1, p0, Lqf;->a:Lou;

    iget-object v2, p0, Lqf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lqb;->e(Lou;Ljava/lang/String;)V

    .line 411
    return-void
.end method
