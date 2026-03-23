.class Lcom/roblox/client/landing/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/roblox/client/landing/a;->a:I

    .line 20
    iput p2, p0, Lcom/roblox/client/landing/a;->b:I

    .line 21
    iput p3, p0, Lcom/roblox/client/landing/a;->c:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/roblox/client/landing/a;->c:I

    return v0
.end method

.method b()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/roblox/client/landing/a;->b:I

    return v0
.end method

.method c()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/roblox/client/landing/a;->a:I

    return v0
.end method
