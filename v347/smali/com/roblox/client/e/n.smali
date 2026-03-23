.class public Lcom/roblox/client/e/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/roblox/client/e/n;->a:I

    .line 13
    iput p2, p0, Lcom/roblox/client/e/n;->b:I

    .line 14
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/roblox/client/e/n;->b:I

    return v0
.end method
