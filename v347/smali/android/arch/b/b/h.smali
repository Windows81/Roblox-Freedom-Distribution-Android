.class public Landroid/arch/b/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/b/a/d;
.implements Landroid/arch/b/a/e;


# static fields
.field static final g:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/arch/b/b/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[J

.field final b:[D

.field final c:[Ljava/lang/String;

.field final d:[[B

.field final e:I

.field f:I

.field private volatile h:Ljava/lang/String;

.field private final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroid/arch/b/b/h;->g:Ljava/util/TreeMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Landroid/arch/b/b/h;->e:I

    .line 110
    add-int/lit8 v0, p1, 0x1

    .line 112
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/arch/b/b/h;->i:[I

    .line 113
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/arch/b/b/h;->a:[J

    .line 114
    new-array v1, v0, [D

    iput-object v1, p0, Landroid/arch/b/b/h;->b:[D

    .line 115
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/arch/b/b/h;->c:[Ljava/lang/String;

    .line 116
    new-array v0, v0, [[B

    iput-object v0, p0, Landroid/arch/b/b/h;->d:[[B

    .line 117
    return-void
.end method

.method public static a(Ljava/lang/String;I)Landroid/arch/b/b/h;
    .locals 4

    .prologue
    .line 92
    sget-object v1, Landroid/arch/b/b/h;->g:Ljava/util/TreeMap;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Landroid/arch/b/b/h;->g:Ljava/util/TreeMap;

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    sget-object v2, Landroid/arch/b/b/h;->g:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/b/b/h;

    .line 98
    invoke-virtual {v0, p0, p1}, Landroid/arch/b/b/h;->b(Ljava/lang/String;I)V

    .line 99
    monitor-exit v1

    .line 104
    :goto_0
    return-object v0

    .line 101
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    new-instance v0, Landroid/arch/b/b/h;

    invoke-direct {v0, p1}, Landroid/arch/b/b/h;-><init>(I)V

    .line 103
    invoke-virtual {v0, p0, p1}, Landroid/arch/b/b/h;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 140
    sget-object v0, Landroid/arch/b/b/h;->g:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 141
    sget-object v0, Landroid/arch/b/b/h;->g:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    .line 142
    sget-object v1, Landroid/arch/b/b/h;->g:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 143
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v0, v1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/arch/b/b/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/arch/b/b/h;->i:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 185
    return-void
.end method

.method public a(ID)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Landroid/arch/b/b/h;->i:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    .line 196
    iget-object v0, p0, Landroid/arch/b/b/h;->b:[D

    aput-wide p2, v0, p1

    .line 197
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Landroid/arch/b/b/h;->i:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 190
    iget-object v0, p0, Landroid/arch/b/b/h;->a:[J

    aput-wide p2, v0, p1

    .line 191
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/arch/b/b/h;->i:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    .line 202
    iget-object v0, p0, Landroid/arch/b/b/h;->c:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 203
    return-void
.end method

.method public a(I[B)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Landroid/arch/b/b/h;->i:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    .line 208
    iget-object v0, p0, Landroid/arch/b/b/h;->d:[[B

    aput-object p2, v0, p1

    .line 209
    return-void
.end method

.method public a(Landroid/arch/b/a/d;)V
    .locals 4

    .prologue
    .line 161
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Landroid/arch/b/b/h;->f:I

    if-gt v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Landroid/arch/b/b/h;->i:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/arch/b/a/d;->a(I)V

    goto :goto_1

    .line 167
    :pswitch_1
    iget-object v1, p0, Landroid/arch/b/b/h;->a:[J

    aget-wide v2, v1, v0

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/b/a/d;->a(IJ)V

    goto :goto_1

    .line 170
    :pswitch_2
    iget-object v1, p0, Landroid/arch/b/b/h;->b:[D

    aget-wide v2, v1, v0

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/b/a/d;->a(ID)V

    goto :goto_1

    .line 173
    :pswitch_3
    iget-object v1, p0, Landroid/arch/b/b/h;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, v0, v1}, Landroid/arch/b/a/d;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 176
    :pswitch_4
    iget-object v1, p0, Landroid/arch/b/b/h;->d:[[B

    aget-object v1, v1, v0

    invoke-interface {p1, v0, v1}, Landroid/arch/b/a/d;->a(I[B)V

    goto :goto_1

    .line 180
    :cond_0
    return-void

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b()V
    .locals 3

    .prologue
    .line 133
    sget-object v1, Landroid/arch/b/b/h;->g:Ljava/util/TreeMap;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Landroid/arch/b/b/h;->g:Ljava/util/TreeMap;

    iget v2, p0, Landroid/arch/b/b/h;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Landroid/arch/b/b/h;->c()V

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Landroid/arch/b/b/h;->h:Ljava/lang/String;

    .line 122
    iput p2, p0, Landroid/arch/b/b/h;->f:I

    .line 123
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    return-void
.end method
