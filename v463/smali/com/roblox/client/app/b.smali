.class public Lcom/roblox/client/app/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$c;->light_ash:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/app/b;->a:I

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$c;->dark_slate:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/roblox/client/app/b;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/ab/e;)I
    .locals 1

    .line 22
    sget-object v0, Lcom/roblox/client/app/b$1;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 24
    :cond_0
    iget p1, p0, Lcom/roblox/client/app/b;->b:I

    return p1

    .line 23
    :cond_1
    iget p1, p0, Lcom/roblox/client/app/b;->a:I

    return p1
.end method
