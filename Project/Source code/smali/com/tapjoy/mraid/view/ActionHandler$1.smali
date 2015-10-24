.class Lcom/tapjoy/mraid/view/ActionHandler$1;
.super Ljava/lang/Object;
.source "ActionHandler.java"

# interfaces
.implements Lcom/tapjoy/mraid/listener/Player;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/ActionHandler;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/ActionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tapjoy/mraid/view/ActionHandler$1;->this$0:Lcom/tapjoy/mraid/view/ActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tapjoy/mraid/view/ActionHandler$1;->this$0:Lcom/tapjoy/mraid/view/ActionHandler;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/ActionHandler;->finish()V

    .line 138
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tapjoy/mraid/view/ActionHandler$1;->this$0:Lcom/tapjoy/mraid/view/ActionHandler;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/ActionHandler;->finish()V

    .line 133
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
