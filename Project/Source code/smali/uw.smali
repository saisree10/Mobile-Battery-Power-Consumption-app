.class public Luw;
.super Ljava/lang/Object;
.source "FeedBackAttachment.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Luw;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Luw;->d:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Luw;->c:Ljava/lang/String;

    .line 39
    iput p4, p0, Luw;->b:I

    .line 40
    return-void
.end method
