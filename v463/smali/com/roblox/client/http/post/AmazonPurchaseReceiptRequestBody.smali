.class public Lcom/roblox/client/http/post/AmazonPurchaseReceiptRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private amazonUserId:Ljava/lang/String;

.field private isRetry:Z

.field private receiptId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/roblox/client/http/post/AmazonPurchaseReceiptRequestBody;->receiptId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/roblox/client/http/post/AmazonPurchaseReceiptRequestBody;->amazonUserId:Ljava/lang/String;

    .line 16
    iput-boolean p3, p0, Lcom/roblox/client/http/post/AmazonPurchaseReceiptRequestBody;->isRetry:Z

    return-void
.end method
