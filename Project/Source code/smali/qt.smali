.class Lqt;
.super Ljava/lang/Object;
.source "ToolboxTctbClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lou;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lqs;


# direct methods
.method constructor <init>(Lqs;Lou;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lqt;->c:Lqs;

    iput-object p2, p0, Lqt;->a:Lou;

    iput-object p3, p0, Lqt;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lqt;->c:Lqs;

    iget-object v1, p0, Lqt;->a:Lou;

    iget-object v2, p0, Lqt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lqs;->e(Lou;Ljava/lang/String;)V

    .line 418
    return-void
.end method
