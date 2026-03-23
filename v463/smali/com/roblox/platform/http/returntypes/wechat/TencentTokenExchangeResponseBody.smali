.class public Lcom/roblox/platform/http/returntypes/wechat/TencentTokenExchangeResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/returntypes/ResponseBody;


# instance fields
.field public final gender:I

.field public final userId:J

.field public final weChatVoucher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/roblox/platform/http/returntypes/wechat/TencentTokenExchangeResponseBody;->weChatVoucher:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/roblox/platform/http/returntypes/wechat/TencentTokenExchangeResponseBody;->gender:I

    .line 16
    iput-wide p3, p0, Lcom/roblox/platform/http/returntypes/wechat/TencentTokenExchangeResponseBody;->userId:J

    return-void
.end method
