.class public Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/returntypes/ResponseBody;


# instance fields
.field public final friendshipStatus:I

.field public final userId:J

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;->userId:J

    .line 10
    iput-object p3, p0, Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;->username:Ljava/lang/String;

    .line 11
    iput p4, p0, Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;->friendshipStatus:I

    return-void
.end method
