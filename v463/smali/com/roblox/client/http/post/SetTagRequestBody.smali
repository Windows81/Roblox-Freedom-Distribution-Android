.class public Lcom/roblox/client/http/post/SetTagRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private final targetUserId:J

.field private final userTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/roblox/client/http/post/SetTagRequestBody;->targetUserId:J

    .line 7
    iput-object p3, p0, Lcom/roblox/client/http/post/SetTagRequestBody;->userTag:Ljava/lang/String;

    return-void
.end method
