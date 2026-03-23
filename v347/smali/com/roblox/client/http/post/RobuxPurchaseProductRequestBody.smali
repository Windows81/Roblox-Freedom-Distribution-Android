.class public Lcom/roblox/client/http/post/RobuxPurchaseProductRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private currency:Ljava/lang/String;

.field private productId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/roblox/client/http/post/RobuxPurchaseProductRequestBody;->productId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/roblox/client/http/post/RobuxPurchaseProductRequestBody;->currency:Ljava/lang/String;

    .line 15
    return-void
.end method
