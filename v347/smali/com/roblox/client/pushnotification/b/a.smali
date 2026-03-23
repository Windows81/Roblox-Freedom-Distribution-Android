.class public Lcom/roblox/client/pushnotification/b/a;
.super Lcom/roblox/client/pushnotification/b/b;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 6

    .prologue
    .line 9
    const-string v5, "FAILURE_NOTIFICATION_ID"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/pushnotification/b/b;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-boolean p5, p0, Lcom/roblox/client/pushnotification/b/a;->a:Z

    .line 11
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/roblox/client/pushnotification/b/a;->a:Z

    return v0
.end method
