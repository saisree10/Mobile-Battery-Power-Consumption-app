.class Lcom/tapjoy/mraid/controller/Utility$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/controller/Utility;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$date:Ljava/lang/String;

.field final synthetic val$entries:Ljava/util/List;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/controller/Utility;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/tapjoy/mraid/controller/Utility$1;->this$0:Lcom/tapjoy/mraid/controller/Utility;

    iput-object p2, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$entries:Ljava/util/List;

    iput-object p3, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$date:Ljava/lang/String;

    iput-object p4, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$entries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 325
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Utility$1;->this$0:Lcom/tapjoy/mraid/controller/Utility;

    const-string v2, "ID"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$date:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/tapjoy/mraid/controller/Utility$1;->val$body:Ljava/lang/String;

    #calls: Lcom/tapjoy/mraid/controller/Utility;->addCalendarEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/tapjoy/mraid/controller/Utility;->access$000(Lcom/tapjoy/mraid/controller/Utility;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 327
    return-void
.end method
