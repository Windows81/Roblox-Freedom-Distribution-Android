.class public Lcom/roblox/platform/http/returntypes/midas/MidasRetrieveTokenResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/returntypes/ResponseBody;


# instance fields
.field public final appId:Ljava/lang/String;

.field public final errorMessages:Ljava/lang/String;

.field public final goodsTokenUrl:Ljava/lang/String;

.field public final openId:Ljava/lang/String;

.field public final openKey:Ljava/lang/String;

.field public final platformId:Ljava/lang/String;

.field public final sessionId:Ljava/lang/String;

.field public final sessionType:Ljava/lang/String;

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/roblox/platform/http/returntypes/midas/MidasRetrieveTokenResponseBody;->appId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/roblox/platform/http/returntypes/midas/MidasRetrieveTokenResponseBody;->platformId:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/roblox/platform/http/returntypes/midas/MidasRetrieveTokenResponseBody;->openId:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/roblox/platform/http/returntypes/midas/MidasRetrieveTokenResponseBody;->openKey:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/roblox/platform/http/returntypes/midas/MidasRetrieveTokenResponseBody;->sessionId:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/roblox/platform/http/returntypes/midas/MidasRetrieveTokenResponseBody;->sessionType:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/roblox/platform/http/returntypes/midas/MidasRetrieveTokenResponseBody;->goodsTokenUrl:Ljava/lang/String;

    .line 27
    iput-object p8, p0, Lcom/roblox/platform/http/returntypes/midas/MidasRetrieveTokenResponseBody;->token:Ljava/lang/String;

    .line 28
    iput-object p9, p0, Lcom/roblox/platform/http/returntypes/midas/MidasRetrieveTokenResponseBody;->errorMessages:Ljava/lang/String;

    return-void
.end method
