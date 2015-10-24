.class Lot;
.super Ljava/lang/Object;
.source "ToolboxCacheManager.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lot;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lot;->b:Ljava/lang/String;

    .line 48
    iput p3, p0, Lot;->c:I

    .line 49
    return-void
.end method
