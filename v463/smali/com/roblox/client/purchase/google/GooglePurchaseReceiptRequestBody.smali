.class public Lcom/roblox/client/purchase/google/GooglePurchaseReceiptRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private isRetry:Z

.field private orderId:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/purchase/google/a/h;Z)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/h;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/purchase/google/GooglePurchaseReceiptRequestBody;->packageName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/h;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/purchase/google/GooglePurchaseReceiptRequestBody;->productId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/h;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/purchase/google/GooglePurchaseReceiptRequestBody;->orderId:Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/roblox/client/purchase/google/GooglePurchaseReceiptRequestBody;->isRetry:Z

    .line 23
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/h;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/purchase/google/GooglePurchaseReceiptRequestBody;->token:Ljava/lang/String;

    return-void
.end method
