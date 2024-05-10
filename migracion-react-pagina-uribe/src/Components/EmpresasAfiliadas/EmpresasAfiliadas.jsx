import React from 'react'

const EmpresasAfiliadas = () => {
    return (
        <div className="px-6 w-full lg:px-8" id="empresas_afiliadas">
            <p className="text-3xl font-semibold pb-6 pt-2">EMPRESAS AFILIADAS</p>

            <div className="w-full h-full flex flex-col space-y-4 items-center justify-center">

                <div className="relative w-full h-96 rounded-xl overflow-hidden">
                    <img className="w-full h-full object-contain" src='https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-principal%2Fmango.png?alt=media&token=98615222-16c0-4a2a-b437-abd26b05666c' alt="Imagen de Mango" />
                    <div className="absolute inset-0 bg-black opacity-0 hover:opacity-90 transition-opacity duration-300">
                        <div className="flex h-full items-center justify-center">
                            <p className="text-white text-center px-8 text-4xl font-bold">
                                MANGO SHOP
                                <br />
                                <span className="text-lg font-semibold">Mango es una marca multinacional de moda con sede en España. Reconocida por su estilo contemporáneo y elegante, Mango ofrece una amplia gama de prendas y accesorios para hombres y mujeres que buscan un look sofisticado y moderno para cada ocasión</span>
                            </p>
                        </div>
                    </div>
                </div>

                <div className="lg:flex lg:h-full lg:w-full lg:space-x-4">
                    <div className="relative w-full h-96 rounded-xl overflow-hidden mb-8 lg:h-auto">
                        <img className="w-full h-full object-cover" src='https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-principal%2Fab.jpg?alt=media&token=44047339-4478-4fc6-bd41-1d592d3931ad' alt="Imagen de American Brands" />
                        <div className="absolute inset-0 bg-black opacity-0 hover:opacity-90 transition-opacity duration-300">
                            <div className="flex h-full items-center justify-center">
                                <p className="text-white text-center px-8 text-4xl font-bold">
                                    AMERICAN BRANDS
                                    <br />
                                    <span className="text-lg font-semibold">American Brands es una colección que representa lo mejor de la moda estadounidense. Con influencias diversas y un enfoque en la comodidad y la versatilidad, American Brands ofrece una amplia variedad de prendas modernas y funcionales para hombres, mujeres y niños</span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div className="h-full w-full">
                        <div className="relative w-full h-96 rounded-xl overflow-hidden mb-8">
                            <img className="w-full h-full object-cover" src='https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-principal%2FRIFLE.png?alt=media&token=784ea3dc-b818-43b6-8424-003c85d3b787' alt="Imagen de Rifle" />
                            <div className="absolute inset-0 bg-black opacity-0 hover:opacity-90 transition-opacity duration-300">
                                <div className="flex h-full items-center justify-center">
                                    <p className="text-white text-center px-8 text-4xl font-bold">
                                        RIFLE
                                        <br />
                                        <span className="text-lg font-semibold">Rifle es una reconocida marca italiana especializada en moda denim. Con una larga historia en la industria de la moda, Rifle se destaca por sus diseños innovadores, calidad excepcional y estilo atemporal, convirtiéndose en un referente en el mundo</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div className="relative w-full h-96 rounded-xl overflow-hidden mb-8">
                            <img className="w-full h-full object-cover" src='https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-principal%2Fnafnaf.png?alt=media&token=66d2f081-21dc-4cfd-92eb-50a9ad0581dc' alt="Logo de NAF-NAF" />
                            <div className="absolute inset-0 bg-black opacity-0 hover:opacity-90 transition-opacity duration-300">
                                <div className="flex h-full items-center justify-center">
                                    <p className="text-white text-center px-8 text-4xl font-bold">
                                        NAF-NAF
                                        <br />
                                        <span className="text-lg font-semibold">Naf-Naf es una marca de moda francesa conocida por su estilo fresco y juvenil. Desde su fundación en 1973, Naf-Naf ha sido un símbolo de moda casual chic, ofreciendo una amplia gama de prendas y accesorios modernos para mujeres</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    )
}

export default EmpresasAfiliadas
