.class public abstract Lcom/roblox/client/feature/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/roblox/client/feature/l;->e:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/roblox/client/feature/FeatureState;)V
.end method

.method public abstract c()V
.end method

.method public abstract d()Z
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public i()Lcom/roblox/client/feature/FeatureState;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {p0}, Lcom/roblox/client/feature/l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/roblox/client/feature/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public v_()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
