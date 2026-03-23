.class public Lcom/roblox/client/k/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/k/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field final synthetic g:Lcom/roblox/client/k/c;


# direct methods
.method public constructor <init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/roblox/client/k/c$c;->g:Lcom/roblox/client/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p2, p0, Lcom/roblox/client/k/c$c;->d:I

    .line 62
    iput p3, p0, Lcom/roblox/client/k/c$c;->e:I

    .line 63
    iput-object p4, p0, Lcom/roblox/client/k/c$c;->f:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/roblox/client/k/c;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/roblox/client/k/c$c;->g:Lcom/roblox/client/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/roblox/client/k/c$c;->c:Ljava/lang/String;

    .line 68
    iput p3, p0, Lcom/roblox/client/k/c$c;->e:I

    .line 69
    iput-object p4, p0, Lcom/roblox/client/k/c$c;->f:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/roblox/client/k/c$c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/roblox/client/k/c$c;->g:Lcom/roblox/client/k/c;

    iget-object v1, p0, Lcom/roblox/client/k/c$c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/k/c;->a(Lcom/roblox/client/k/c;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/k/c$c;->g:Lcom/roblox/client/k/c;

    invoke-virtual {v0}, Lcom/roblox/client/k/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureOption has no valid feature name"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/roblox/client/k/c$c;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
