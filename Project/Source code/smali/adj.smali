.class Ladj;
.super Ljava/lang/Object;
.source "BatteryFaceBookDialog.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Ladi;


# direct methods
.method constructor <init>(Ladi;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Ladj;->a:Ladi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Ladj;->a:Ladi;

    invoke-static {v0, p1}, Ladi;->a(Ladi;Lcom/facebook/Session;)Lcom/facebook/Session;

    .line 39
    :cond_0
    return-void
.end method
