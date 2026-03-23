.class public final Lcom/google/ads/interactivemedia/v3/a/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/b/a/i$a;,
        Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/b/c;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/e;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/b/d;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/c;Lcom/google/ads/interactivemedia/v3/a/e;Lcom/google/ads/interactivemedia/v3/a/b/d;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a:Lcom/google/ads/interactivemedia/v3/a/b/c;

    .line 57
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->b:Lcom/google/ads/interactivemedia/v3/a/e;

    .line 58
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->c:Lcom/google/ads/interactivemedia/v3/a/b/d;

    .line 59
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/c/a;ZZ)Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<*>;ZZ)",
            "Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p4}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/i;->a(Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 105
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/a/i;Ljava/lang/String;ZZLcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Field;Lcom/google/ads/interactivemedia/v3/a/c/a;Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/b/a/i;Lcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Field;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Field;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Field;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<*>;)",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 131
    const-class v0, Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/a/b;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a:Lcom/google/ads/interactivemedia/v3/a/b/c;

    invoke-static {v1, p1, p3, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/b/c;Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;Lcom/google/ads/interactivemedia/v3/a/a/b;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/google/ads/interactivemedia/v3/a/e;Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/e;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const-class v0, Lcom/google/ads/interactivemedia/v3/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/a/c;

    .line 77
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 78
    if-nez v0, :cond_1

    .line 79
    invoke-interface {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/e;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-object v1

    .line 81
    :cond_1
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/a/c;->b()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 83
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->b:Lcom/google/ads/interactivemedia/v3/a/e;

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/e;Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 141
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v10

    .line 174
    :goto_0
    return-object v1

    .line 145
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 146
    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_6

    .line 147
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .line 148
    array-length v14, v13

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v14, :cond_5

    aget-object v3, v13, v11

    .line 149
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    .line 150
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    .line 151
    if-nez v6, :cond_2

    if-nez v7, :cond_2

    .line 148
    :cond_1
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_2

    .line 154
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    .line 156
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v16

    .line 157
    const/4 v8, 0x0

    .line 158
    const/4 v1, 0x0

    move v9, v1

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 159
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 160
    if-eqz v9, :cond_3

    const/4 v6, 0x0

    .line 162
    :cond_3
    invoke-static {v15}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/a/c/a;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 161
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/c/a;ZZ)Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;

    move-result-object v1

    .line 163
    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;

    .line 164
    if-nez v8, :cond_7

    .line 158
    :goto_4
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-object v8, v1

    goto :goto_3

    .line 166
    :cond_4
    if-eqz v8, :cond_1

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x25

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " declares multiple JSON fields named "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/a/c/a;

    move-result-object p2

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_1

    :cond_6
    move-object v1, v10

    .line 174
    goto/16 :goto_0

    :cond_7
    move-object v1, v8

    goto :goto_4
.end method

.method static a(Ljava/lang/reflect/Field;ZLcom/google/ads/interactivemedia/v3/a/b/d;)Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object v2

    .line 92
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a:Lcom/google/ads/interactivemedia/v3/a/b/c;

    invoke-virtual {v1, p2}, Lcom/google/ads/interactivemedia/v3/a/b/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/b/h;

    move-result-object v3

    .line 97
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/b/a/i$a;

    invoke-direct {p0, p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/i$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/h;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->c:Lcom/google/ads/interactivemedia/v3/a/b/d;

    invoke-static {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Ljava/lang/reflect/Field;ZLcom/google/ads/interactivemedia/v3/a/b/d;)Z

    move-result v0

    return v0
.end method
