.class public abstract Lcom/roblox/client/http/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/roblox/client/http/a/d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected final d:F


# direct methods
.method public constructor <init>(IIF)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/roblox/client/http/a/a;->a:I

    .line 63
    iput p2, p0, Lcom/roblox/client/http/a/a;->c:I

    .line 64
    iput p3, p0, Lcom/roblox/client/http/a/a;->d:F

    .line 65
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/roblox/client/http/a/a;->a:I

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/roblox/client/http/a/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/roblox/client/http/a/a;->b:I

    .line 97
    iget v0, p0, Lcom/roblox/client/http/a/a;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/roblox/client/http/a/a;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/roblox/client/http/a/a;->a:I

    .line 98
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/roblox/client/http/a/a;->b:I

    iget v1, p0, Lcom/roblox/client/http/a/a;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
