.class public Lcom/roblox/platform/http/returntypes/TencentTokenAuthenticationResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/returntypes/ResponseBody;


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final gender:I

.field public final userId:J

.field public final voucher:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/roblox/platform/http/returntypes/TencentTokenAuthenticationResponseBody;->gender:I

    .line 12
    iput-wide p2, p0, Lcom/roblox/platform/http/returntypes/TencentTokenAuthenticationResponseBody;->userId:J

    .line 13
    iput-object p4, p0, Lcom/roblox/platform/http/returntypes/TencentTokenAuthenticationResponseBody;->voucher:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/roblox/platform/http/returntypes/TencentTokenAuthenticationResponseBody;->displayName:Ljava/lang/String;

    return-void
.end method
