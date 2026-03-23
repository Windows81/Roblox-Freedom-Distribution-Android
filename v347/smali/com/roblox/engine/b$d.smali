.class Lcom/roblox/engine/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/engine/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:I

.field final synthetic d:Lcom/roblox/engine/b;

.field private e:F

.field private f:F

.field private g:I


# direct methods
.method constructor <init>(Lcom/roblox/engine/b;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/roblox/engine/b$d;->d:Lcom/roblox/engine/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/roblox/engine/b$d;->e:F

    return v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/roblox/engine/b$d;->e:F

    iput v0, p0, Lcom/roblox/engine/b$d;->a:F

    .line 90
    iput p1, p0, Lcom/roblox/engine/b$d;->e:F

    .line 91
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/roblox/engine/b$d;->g:I

    iput v0, p0, Lcom/roblox/engine/b$d;->c:I

    .line 110
    iput p1, p0, Lcom/roblox/engine/b$d;->g:I

    .line 111
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/roblox/engine/b$d;->f:F

    return v0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/roblox/engine/b$d;->f:F

    iput v0, p0, Lcom/roblox/engine/b$d;->b:F

    .line 100
    iput p1, p0, Lcom/roblox/engine/b$d;->f:F

    .line 101
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/roblox/engine/b$d;->g:I

    return v0
.end method
