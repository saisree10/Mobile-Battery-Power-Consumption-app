.class Lcom/tapjoy/mraid/view/MraidView$5$2;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$1:Lcom/tapjoy/mraid/view/MraidView$5;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$5$2;->this$1:Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 1136
    const-string v0, "MRAIDView"

    const-string v1, "** ON COMPLETION **"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$5$2;->this$1:Lcom/tapjoy/mraid/view/MraidView$5;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$5;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->videoViewCleanup()V

    .line 1139
    return-void
.end method
