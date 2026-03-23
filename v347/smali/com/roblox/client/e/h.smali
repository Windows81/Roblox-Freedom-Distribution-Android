.class public Lcom/roblox/client/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# instance fields
.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput v0, Lcom/roblox/client/e/h;->a:I

    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/roblox/client/e/h;->b:I

    .line 11
    const/4 v0, 0x2

    sput v0, Lcom/roblox/client/e/h;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget v0, Lcom/roblox/client/e/h;->a:I

    iput v0, p0, Lcom/roblox/client/e/h;->d:I

    .line 17
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_0

    sget v0, Lcom/roblox/client/e/h;->b:I

    :goto_0
    iput v0, p0, Lcom/roblox/client/e/h;->d:I

    .line 21
    return-void

    .line 20
    :cond_0
    sget v0, Lcom/roblox/client/e/h;->c:I

    goto :goto_0
.end method
