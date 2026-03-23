.class public abstract Lcom/roblox/client/util/a/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/roblox/client/util/a/a;->b:Landroid/content/Context;

    .line 20
    iput-object p1, p0, Lcom/roblox/client/util/a/a;->a:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/roblox/client/util/a/a;->c:Ljava/lang/String;

    .line 22
    iput p4, p0, Lcom/roblox/client/util/a/a;->d:I

    .line 23
    iput p5, p0, Lcom/roblox/client/util/a/a;->e:I

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/roblox/client/util/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/roblox/client/util/a/a;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/roblox/client/util/a/a;->e:I

    return v0
.end method
