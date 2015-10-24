.class public Lap;
.super Lav;
.source "NotificationCompat.java"


# instance fields
.field a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 785
    invoke-direct {p0}, Lav;-><init>()V

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lap;->a:Ljava/util/ArrayList;

    .line 786
    return-void
.end method
