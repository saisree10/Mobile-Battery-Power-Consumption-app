.class public final Lln;
.super Ljava/lang/Object;
.source "Record.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://com.dianxinos.cms.front.client.provider.Record/records"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lln;->a:Landroid/net/Uri;

    .line 19
    return-void
.end method
