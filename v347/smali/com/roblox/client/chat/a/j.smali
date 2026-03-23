.class public Lcom/roblox/client/chat/a/j;
.super Lcom/roblox/client/chat/a/h;
.source "SourceFile"


# static fields
.field private static b:I


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput v0, Lcom/roblox/client/chat/a/j;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 13
    invoke-direct {p0}, Lcom/roblox/client/chat/a/h;-><init>()V

    .line 11
    const-string v0, "SYSTEM_MESSAGE_CLIENT_ID"

    iput-object v0, p0, Lcom/roblox/client/chat/a/j;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/a/j;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/roblox/client/chat/a/j;->a(Z)V

    .line 16
    iput-boolean v1, p0, Lcom/roblox/client/chat/a/j;->a:Z

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/a/j;->a(J)V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/a/j;->b(J)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYSTEM_MESSAGE_CLIENT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/roblox/client/chat/a/j;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/roblox/client/chat/a/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/j;->b(Ljava/lang/String;)V

    .line 20
    return-void
.end method
