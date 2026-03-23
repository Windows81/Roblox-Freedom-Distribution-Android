.class public Lcom/roblox/platform/http/returntypes/auth/SignUpResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/returntypes/ResponseBody;


# instance fields
.field public final starterPlaceId:J

.field public final userId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/roblox/platform/http/returntypes/auth/SignUpResponseBody;->userId:J

    .line 15
    iput-wide p3, p0, Lcom/roblox/platform/http/returntypes/auth/SignUpResponseBody;->starterPlaceId:J

    return-void
.end method
